import ballerinax/ai.agent;

final agent:OpenAiModel _MathTutorModel = check new ("", "gpt-3.5-turbo-16k-0613");
final agent:Agent _MathTutorAgent = check new (
    systemPrompt = {role: "Math Tutor", instructions: string `You are a school math tutor assistant. Use the tools to provide answers to students' questions`}, model = _MathTutorModel, tools = [getMult]
);

@agent:Tool
@display {label: "", iconPath: ""}
isolated function getMult(decimal a, decimal b) returns decimal {
    decimal result = multiply(a, b);
    return result;
}
