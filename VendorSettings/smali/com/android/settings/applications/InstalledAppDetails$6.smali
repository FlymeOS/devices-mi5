.class Lcom/android/vendorsettings/applications/InstalledAppDetails$6;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$6;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 959
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$6;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetails$6;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->a(Lcom/android/vendorsettings/applications/InstalledAppDetails;Z)V

    .line 960
    return-void

    .line 959
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
