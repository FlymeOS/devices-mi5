.class Lcom/android/settings/f/b;
.super Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.source "VoiceSettingsActivity.java"


# instance fields
.field final synthetic auJ:Lcom/android/settings/f/a;


# direct methods
.method constructor <init>(Lcom/android/settings/f/a;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/f/b;->auJ:Lcom/android/settings/f/a;

    invoke-direct {p0, p2, p3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCompleteResult(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/f/b;->auJ:Lcom/android/settings/f/a;

    invoke-virtual {v0}, Lcom/android/settings/f/a;->finish()V

    .line 72
    return-void
.end method
