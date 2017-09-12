.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
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
    .line 249
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 252
    return-void
.end method
