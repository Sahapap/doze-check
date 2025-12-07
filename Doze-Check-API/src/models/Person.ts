import { Schema, model, Document } from "mongoose";
import { Person as IPerson, StopBangAnswer, EpworthAnswer } from "../interfaces/AssessmentHistory";

export interface Person extends IPerson, Document {}

// ---- Subschemas ----
const EpworthAnswerSchema = new Schema<EpworthAnswer>(
    {
        id: { type: String, required: true },
        name: { type: String, required: true },
        score: { type: Number, required: true },
    },
    { _id: false }
);

const StopBangAnswerSchema = new Schema<StopBangAnswer>(
    {
        id: { type: String, required: true },
        name: { type: String, required: true },
        answer: { type: Boolean, required: true },
    },
    { _id: false }
);

// ---- Main schema ----
const PersonSchema = new Schema<Person>(
    {
        accidentHistory: {
        answer: { type: Boolean, required: true },
        },
        epworth: {
        answers: { type: [EpworthAnswerSchema], required: true },
        },
        firstName: { type: String, required: true },
        hourSleepPerDay: { type: Number, required: true },
        keyName: { type: String, required: true },
        lastName: { type: String, required: true },
        phoneNumber: { type: String, required: true },
        stopBang: {
        answers: { type: [StopBangAnswerSchema], required: true },
        height: { type: Number, required: true },
        neckCircumference: { type: Number, required: true },
        weight: { type: Number, required: true },
        },
    },
    { timestamps: true }
);

export const PersonModel = model<Person>('Person', PersonSchema)