#streamlit run app.py   --browser.serverAddress=localhost   --server.enableCORS=false   --server.enableXsrfProtection=false   --server.port 8080
import os
import streamlit as st
from langchain_google_vertexai import ChatVertexAI
from langchain.prompts import ChatPromptTemplate
from langchain.schema import HumanMessage, SystemMessage
from langchain.chains import LLMChain, SimpleSequentialChain
from langchain.prompts import PromptTemplate
from streamlit_lottie import st_lottie
import psycopg2
import requests
st.set_page_config(page_title='AlloyDB Assistant')
def load_lottieurl(url:str):
    r = requests.get(url)
    url_json = dict()
    if r.status_code == 200:
        url_json = r.json()
        return url_json
    else:
        None
load_bot = load_lottieurl("https://lottie.host/02dc354a-6772-4696-9a72-5de200583aaa/LnRctYz4gl.json")
col1,col2 = st.columns(2)
with col1:
    st.markdown('Managed by: <a href="mailto:javierbarthe@google.com">Javier Barthe</a>',unsafe_allow_html=True)
    st.markdown('')
    st.markdown('')
    st.title(":violet[Asistente financiero Gemini + AlloyDB]")
with col2:
    st_lottie(load_bot,height=200,width=200,speed=1,loop=True,quality='high',key='bot')
# Database credentials from environment variables
#DB_USER = os.environ.get("DB_USER")
#DB_PASSWORD = os.environ.get("DB_PASSWORD")
#DB_HOST = os.environ.get("DB_HOST")
#DB_PORT = os.environ.get("DB_PORT")
#DB_NAME = os.environ.get("DB_NAME")
conn = psycopg2.connect(
    host='127.0.0.1',
    database='assistantdemo',
    user='postgres',
    password='',
    port='5432'
)
cursor = conn.cursor()
# Initialize the Gemini chat model with the API key
chat = ChatVertexAI(
    model_name="gemini-1.5-pro-002",
    google_api_key=""
)

# Initialize chat history
if "messages" not in st.session_state:
    st.session_state.messages = []
    with st.chat_message("assistant"):
      st.markdown("Hola, soy Gemini tu nuevo asistente financiero. Como puedo ayudarte el dia de hoy?")
# Display chat messages from history on app rerun
for message in st.session_state.messages:
    with st.chat_message(message["role"]):
        st.markdown(message["content"])

# Define the prompt template for the LLM chain
llm_chain_template = """
    You are a helpful and informative banking assistant.You only will reply about banking related topics asking the user about what specific operation they want to do.
    You should understand and respond in Spanish.
    Use the following context to answer the user's question.
    Context: {context}
    Question: {question}
    Answer:
"""
llm_prompt = PromptTemplate(
    input_variables=["context", "question"], template=llm_chain_template
)
llm_chain = LLMChain(llm=chat, prompt=llm_prompt)

# Get user input
user_input = st.chat_input("Escribe tu mensaje aqui")

# Generate response
if user_input:
    # Add user message to chat history (grafica)
    print (user_input)
    st.session_state.messages.append({"role": "user", "content": user_input})
    with st.chat_message("user"):
        st.markdown(user_input)

    # Get the relevant context from AlloyDB based on user input
    context_query = f"""
        SELECT Gemini_Bank_Assistantv2 ('{user_input}')
    """
    print(context_query)
    cursor.execute(context_query)
    context_result = cursor.fetchone()
    print (context_result)
    if context_result[0] is not None:
        context = f"Vamos a derivarte con: {context_result[0]}"
        print(context)
        print(context_result[0])
        #response = llm_chain.run({"context": context, "question": user_input})
        response = context
    else:
        context = user_input
        response = llm_chain.run({"context": context, "question": user_input})
        #response = "Disculpa, pero no encontre ningun flujo relacionado con tu pedido."

    st.session_state.messages.append({"role": "assistant", "content": response})
    with st.chat_message("assistant"):
        st.markdown(response)
