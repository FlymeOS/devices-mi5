.class final Lcom/android/server/am/ActivityManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lcom/android/server/am/MiuiUserSwitchingDialog;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$userId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MiuiUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->show()V

    .line 269
    return-void
.end method
