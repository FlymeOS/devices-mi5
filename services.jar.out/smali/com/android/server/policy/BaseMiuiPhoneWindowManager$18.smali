.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2345
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-eqz v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2351
    :cond_0
    return-void
.end method
