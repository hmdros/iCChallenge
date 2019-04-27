const postInformation = (information) => {
  return fetch('http://localhost:3000/informations', {
    method: 'POST',
    body: information // JSON.stringify(data), // data can be `string` or {object}!
  }).then (
      res => console.log(res)
  )
}

const generateUUID = () => {
  let r;
  let uuid;
  let v;
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
    uuid = v.toString(16);
    return uuid;
  });
}

const createInformation = (idLocal) => {
  let uuid;
  if(idLocal){
    uuid = idLocal
  }else{
    uuid = generateUUID()
    localStorage.setItem('icasei-uuid', uuid);
  }

  const timestamp =  new Date(Date.now()).toLocaleString('pt-BR')
  const url = window.location.href

  const formData = new FormData();
  formData.append('uuid', uuid);
  formData.append('timestamp', timestamp);
  formData.append('url', url);
  return formData
}

const tracker = () => {
    const localUUID = localStorage.getItem('icasei-uuid')
    console.log(localUUID)
    const information = createInformation(localUUID)
    return postInformation(information)
}

export { tracker };
