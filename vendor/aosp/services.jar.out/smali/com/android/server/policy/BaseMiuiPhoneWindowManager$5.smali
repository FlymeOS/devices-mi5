.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->systemReady()V
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
    .line 435
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/database/ContentObserver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 439
    return-void
.end method
