.class Lmiui/app/ToggleManager$4;
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
    .line 969
    iput-object p1, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 972
    iget-object v0, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$500(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$400(Lmiui/app/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->onMobileDataChange(Landroid/content/Context;)V

    .line 973
    iget-object v0, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateDataToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$200(Lmiui/app/ToggleManager;)V

    .line 974
    return-void
.end method
