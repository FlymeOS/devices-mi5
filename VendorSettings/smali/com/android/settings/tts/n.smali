.class Lcom/android/settings/tts/n;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ata:Lcom/android/settings/tts/m;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/m;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/tts/n;->ata:Lcom/android/settings/tts/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/tts/n;->ata:Lcom/android/settings/tts/m;

    iget-object v0, v0, Lcom/android/settings/tts/m;->asZ:Lcom/android/settings/tts/l;

    invoke-static {v0}, Lcom/android/settings/tts/l;->a(Lcom/android/settings/tts/l;)Landroid/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 82
    return-void
.end method
