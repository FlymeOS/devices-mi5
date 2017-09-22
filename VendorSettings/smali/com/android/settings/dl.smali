.class Lcom/android/vendorsettings/dl;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetSettings.java"


# instance fields
.field final synthetic nH:Lcom/android/vendorsettings/HeadsetSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/vendorsettings/dl;->nH:Lcom/android/vendorsettings/HeadsetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/dl;->nH:Lcom/android/vendorsettings/HeadsetSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/HeadsetSettings;->a(Lcom/android/vendorsettings/HeadsetSettings;)V

    .line 260
    return-void
.end method
