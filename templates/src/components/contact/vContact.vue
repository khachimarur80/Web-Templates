<template>
  <div id="contacto">
    <h1 class="contact-header">
      Contacto
    </h1>
    <div class="contact-contents">
      <form class="contact-form" id="contact-form" @submit="submitForm(event)" ref="contactForm">
        <div class="form-row">
          <div class="name">
            <div class="name-contents">
              <label for="from_name">Nombre:</label>
              <input 
                type="text" 
                id="from_name" 
                name="from_name" 
                required 
                aria-describedby="username-error" 
                placeholder="Introduce tu nombre" 
                v-model="formData.from_name" 
                @focusout="validateField('from_name')" 
                @keyup="validateField('from_name')">
            </div>
            <div id="name-error" class="error-message" aria-live="polite">{{ errors.from_name }}</div>
          </div>
          <div class="email">
            <div class="email-contents">
              <label for="user_email">Email:</label>
              <input 
                type="email" 
                id="user_email" 
                name="user_email" 
                required 
                aria-describedby="email-error" 
                placeholder="Introduce tu email" 
                v-model="formData.user_email" 
                @focusout="validateField('user_email')" 
                @keyup="validateField('user_email')">
            </div>
            <div id="email-error" class="error-message" aria-live="polite">{{ errors.user_email }}</div>
          </div>
        </div>
        <div class="form-row">
          <label for="message">Mensaje:</label>
          <textarea
            type="text" 
            id="message" 
            name="message" 
            required 
            aria-describedby="message-error" 
            placeholder="Introduce tu mensaje" 
            v-model="formData.message" 
            @focusout="validateField('message')" 
            @keyup="validateField('message')"></textarea>
          <div id="message-error" class="error-message" aria-live="polite">{{ errors.message }}</div>
        </div>
        <div style="display: flex; width: 100%">
          <div style="flex-grow: 1;"></div>
          <button
            type="submit"
            :style="{'--color' : sendColor}"
            id="send"
            tabindex="-1" 
            :disabled="!validForm"
          > 
            <span v-if="!sending">{{ sendText }}</span>
            <span class="loader" v-else></span>
          </button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import emailjs from 'emailjs-com'
export default {
  name: 'vContact',
  data: () => ({
    validForm: false,
    formData: {
      from_name: '',
      user_email: '',
      message: '',
    },    
    errors: {
      from_name: '',
      user_email: '',
      message: '',
    },
    sending: false,
    sendText: 'Enviar',
    sendColor: 'var(--primary)',
  }),
  methods: {
    resetForm() {
      this.$refs.contactForm.reset();
      this.formData = {
        name: '',
        email: '',
        message: '',
      };
    },
    submitForm(event) {
      event.preventDefault()
      this.validForm = false
      this.sending = true
      const vm = this
      emailjs.init('Ifjg_oR_H0mMlRnTI')

      emailjs.sendForm("service_p4b392o", "template_wokpaeh", '#contact-form')
      .then(function () {
        vm.sendColor = 'var(--success)'
        vm.sendText = 'Enviado!'

        setTimeout(()=>{
          vm.sendColor = 'var(--primary)'
          vm.sendText = 'Enviar'
          vm.resetForm();
        }, 3000)

        vm.sending = false
      })
      .catch(function () {
        vm.sendColor = 'var(--error)'
        vm.sendText = 'Error'

        setTimeout(()=>{
          vm.sendColor = 'var(--primary)'
          vm.sendText = 'Enviar'
          vm.resetForm();
        }, 3000)

        vm.sending = false
      });
    },
    validateAllFields() {
      let valid = true

      if (!this.formData.user_email.trim()) {
        valid = false
      } 
      else if (!/\S+@\S+\.\S+/.test(this.formData.user_email)) {
        valid = false
      } 
      if (!this.formData.from_name.trim()) {
        valid = false
      } 
      if (!this.formData.message.trim()) {
        valid = false
      } 

      return valid
    },
    validateField(field) {
      let fields = ['user_email', 'from_name', 'message']

      switch (fields.indexOf(field)) {
        case 0:
          if (!this.formData.user_email.trim()) {
            this.errors.email = 'Introduce tu email!';
          } 
          else if (!/\S+@\S+\.\S+/.test(this.formData.user_email)) {
            this.errors.user_email = 'Email inválido!';
          } 
          else {
            this.errors.user_email = '';
          }
          break;
        case 1:
          if (!this.formData.from_name.trim()) {
            this.errors.from_name = 'Introduce tu  nombre!';
          } 
          else {
            this.errors.from_name = '';
          }
          break;
        case 2:
          if (!this.formData.message.trim()) {
            this.errors.message = 'Escribe tu mensaje!';
          } 
          else {
            this.errors.message = '';
          }
          break;
      }

      this.validForm = this.validateAllFields()

      if (this.validForm) {
        this.sendColor = "var(--warning)"
      }
    },
  },
}
</script>

<style scoped>
  .contact-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    color: var(--text-light);
  }
  #contacto {
    width: 100h;
    padding: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background: url('@/assets/images/fondo1.jpg');
    background-size: cover;
  }
  .contact-form {
    width: 100%;
  }
  .contact-contents {
    width: 700px;
    padding: 30px;
    background: rgba(255, 255, 255, .8);
    border-radius: 20px;
  }
  .name {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-direction: column;
  }
  .email {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-direction: column;
  }
  .email-contents, .name-contents {
    display: flex;
    justify-content: flex-start;
    gap: 10px;
    align-items: center;
  }

  .form-row {
    padding: 20px;
    display: flex;
    justify-content: space-evenly;
  }
  .form-row:nth-child(2) {
    flex-direction: column;
    gap: 20px;
    padding-top: 0px;
  }
  label {
    font-weight: bold;
  }
  input, textarea {
    background: transparent;
    outline: none;
    border: 1px solid var(--text);
    border-radius: 5px;
    padding: 10px;
    padding-top: 5px;
    padding-bottom: 5px;
    font-family: var(--font-family);
  }
  textarea {
    height: 100px;
    resize: none;
  }

  .error-message {
    color: var(--error);
    font-size: 14px;
    padding: 5px;
    width: 100%;
    height: 24px;
    font-weight: bold;
  }
  #send {
    cursor: pointer;
    background: var(--color);
    padding: 15px;
    padding-top: 8px;
    padding-bottom: 8px;
    border-radius: 8px;
    border: none;
    width: 80px;
    height: 35px;
    color: var(--text-light);
  }
  #send[disabled] {
    cursor: not-allowed;
  }
  #message-error {
    margin: 0px;
    paddign: 0px;
    margin-top: -10px;
    margin-bottom: -10px;
  }

  .loader {
    display: inline-block;
    width: 15px;
    height: 15px;
    border: 3px solid var(--primary);
    border-radius: 50%;
    border-top-color: #fff;
    animation: spin 1s linear infinite;
  }

  @keyframes spin {
    to { -webkit-transform: rotate(360deg); }
  }

  @media only screen and (max-width: 767px) {
    .contact-contents {
      width: calc(100%);
      padding: 10px;
      padding-left: 0px;
    }
    .form-row {
      flex-direction: column;
      align-items: flex-start;
    }
    textarea, input {
      width: 100%;
    }
  }
</style>