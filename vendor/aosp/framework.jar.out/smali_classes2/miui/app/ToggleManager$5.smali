.class Lmiui/app/ToggleManager$5;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 977
    iput-object p1, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 980
    iget-object v1, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    iget-object v2, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lmiui/app/ToggleManager;->access$700(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_policy"

    iget-object v4, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mCurrentUserId:I
    invoke-static {v4}, Lmiui/app/ToggleManager;->access$800(Lmiui/app/ToggleManager;)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z
    invoke-static {v1, v0}, Lmiui/app/ToggleManager;->access$602(Lmiui/app/ToggleManager;Z)Z

    .line 982
    iget-object v0, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateDataToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$200(Lmiui/app/ToggleManager;)V

    .line 983
    return-void

    .line 980
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
