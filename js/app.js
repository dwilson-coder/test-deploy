// const { default: axios } = require("axios")

const results = document.querySelector('.result')

const fetchAffirmations = async() =>{

try {
    const {data} = await axios.get('/.netlify/functions/airtable')


const affirmations = data.map((affirmation)=>{
  const {id,name,date,image,pdf,url,link} = affirmation 

  return `<div>
  <a href="${link}" target="_blank" rel="noopener">
<div class="block"><img src="${url}" alt="${date}" class="affirmation_image"></div>
<h5>${name}</h5>
</a></div>`
}).join('')
results.innerHTML = affirmations

} catch (error) {
    results.innerHTML = '<h4>There was an Error!'
}

}

fetchAffirmations()