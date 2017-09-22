.class Lcom/android/settings/tts/h;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic asO:Lcom/android/settings/tts/e;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/e;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-static {v1}, Lcom/android/settings/tts/e;->a(Lcom/android/settings/tts/e;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "label"

    iget-object v1, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-static {v1}, Lcom/android/settings/tts/e;->a(Lcom/android/settings/tts/e;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-static {v0}, Lcom/android/settings/tts/e;->b(Lcom/android/settings/tts/e;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "voices"

    iget-object v1, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-static {v1}, Lcom/android/settings/tts/e;->b(Lcom/android/settings/tts/e;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-static {v0}, Lcom/android/settings/tts/e;->c(Lcom/android/settings/tts/e;)Lcom/android/settings/hn;

    move-result-object v0

    const-class v1, Lcom/android/settings/tts/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/tts/h;->asO:Lcom/android/settings/tts/e;

    invoke-static {v4}, Lcom/android/settings/tts/e;->a(Lcom/android/settings/tts/e;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 175
    return-void
.end method
