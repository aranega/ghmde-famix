# ghmde-famix

## How to load the MSE model

Replace `model/ghmde.mse` by the path on your hardrive (obviously).

```smalltalk
model := nil.
'model/ghmde.mse' asFileReference readStreamDo: [:stream | model := GhmdeModel importFromMSEStream: stream ].
model install
```
