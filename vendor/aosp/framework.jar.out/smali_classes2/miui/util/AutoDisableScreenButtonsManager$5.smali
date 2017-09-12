.class Lmiui/util/AutoDisableScreenButtonsManager$5;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$5;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 199
    check-cast p1, Lmiui/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$5;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->access$200(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ADSB_NOT_SHOW_PROMPTS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_0
    return-void
.end method
