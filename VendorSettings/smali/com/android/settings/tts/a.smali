.class Lcom/android/vendorsettings/tts/a;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/vendorsettings/tts/a;->asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/vendorsettings/tts/a;->asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/tts/TextToSpeechSettings;->cV(I)V

    .line 133
    return-void
.end method
