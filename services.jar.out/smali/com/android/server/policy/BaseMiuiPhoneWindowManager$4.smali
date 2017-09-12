.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;


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
    .line 277
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDisabled()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    return v0
.end method

.method public onSetState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setScreenButtonsState(Z)V

    .line 280
    return-void
.end method
