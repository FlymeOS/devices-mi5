.class Lcom/android/settings/tts/o;
.super Landroid/content/BroadcastReceiver;
.source "TtsEngineSettingsFragment.java"


# instance fields
.field final synthetic asZ:Lcom/android/settings/tts/l;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/l;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/tts/o;->asZ:Lcom/android/settings/tts/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 92
    const-string v0, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/tts/o;->asZ:Lcom/android/settings/tts/l;

    invoke-static {v0}, Lcom/android/settings/tts/l;->b(Lcom/android/settings/tts/l;)V

    .line 95
    :cond_0
    return-void
.end method
