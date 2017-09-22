.class public Lcom/android/vendorsettings/voice/c;
.super Lcom/android/vendorsettings/voice/b;
.source "VoiceInputHelper.java"


# instance fields
.field public final auY:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/vendorsettings/voice/b;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 82
    iput-object p2, p0, Lcom/android/vendorsettings/voice/c;->auY:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 83
    return-void
.end method
