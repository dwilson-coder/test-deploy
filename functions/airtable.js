require('dotenv').config()
const Airtable = require('airtable-node');
 
  const airtable = new Airtable({ apiKey: process.env.AIRTABLE_API_KEY })
  .base(process.env.AIRTABLE_BASE_ID)
  .table('affirmations')


  exports.handler = async (event,context, cb) =>{
    try {
        const {records} = await airtable.list()
        const affirmations = records.map((affirmation)=>{
            const {id} = affirmation;
            const {name,date,image,pdf} = affirmation.fields
            const url = image[0].url
            const link = pdf[0].url  
            return{id,name,date,image,pdf,url,link}
        })
        return {
            statusCode: 200,
            body: JSON.stringify(affirmations),
        }
    } catch (error) {
       return{
        statusCode: 500,
        body: 'Server Error',
       }
    }
    }