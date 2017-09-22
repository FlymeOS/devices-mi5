.class Lcom/android/settings/gg;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyModeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field final synthetic vP:Lcom/android/settings/PrivacyModeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacyModeDialog;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/gg;->vP:Lcom/android/settings/PrivacyModeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/settings/gg;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/android/settings/gg;->mDialog:Landroid/app/Dialog;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/gg;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/gg;->vP:Lcom/android/settings/PrivacyModeDialog;

    invoke-virtual {v0}, Lcom/android/settings/PrivacyModeDialog;->finish()V

    .line 76
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/gg;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 70
    return-void
.end method
