const express = require('express')
const app = express()
 
app.get('/', function (req, res) {
  res.send('Hello World')
})

app.get('/api/nf1', function(req,res){
  if (Math.round(Math.random())){
    res.status(200).send({success: "NF1 Invoked"})			
  }else{
	if (Math.round(Math.random())){	
	   res.status(500).send({error: "Server Error"})
        }else{
	   res.status(408).send({errpr: "Time Out"})
	}  
}
})


app.listen(3000)
