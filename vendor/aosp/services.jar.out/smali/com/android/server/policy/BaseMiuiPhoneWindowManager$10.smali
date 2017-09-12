.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;
.super Landroid/content/BroadcastReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V

    .line 1373
    return-void
.end method
