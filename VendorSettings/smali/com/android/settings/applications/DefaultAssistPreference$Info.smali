.class Lcom/android/settings/applications/DefaultAssistPreference$Info;
.super Ljava/lang/Object;
.source "DefaultAssistPreference.java"


# instance fields
.field public final Ig:Landroid/service/voice/VoiceInteractionServiceInfo;

.field public final component:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->Ig:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 205
    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    .line 209
    iput-object p2, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->Ig:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 210
    return-void
.end method


# virtual methods
.method public kq()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->Ig:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
