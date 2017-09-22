.class Lcom/android/vendorsettings/tts/d;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/vendorsettings/tts/d;->asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vendorsettings/tts/d;->asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/tts/d;->asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/tts/d;->asH:Lcom/android/vendorsettings/tts/TextToSpeechSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/tts/TextToSpeechSettings;->a(Lcom/android/vendorsettings/tts/TextToSpeechSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/tts/TextToSpeechSettings;->a(Lcom/android/vendorsettings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    .line 268
    :cond_0
    return-void
.end method
