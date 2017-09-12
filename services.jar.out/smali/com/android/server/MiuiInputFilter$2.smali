.class Lcom/android/server/MiuiInputFilter$2;
.super Ljava/lang/Object;
.source "MiuiInputFilter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MiuiInputFilter;->showGestureDetectAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/MiuiInputFilter;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter$2;->this$0:Lcom/android/server/MiuiInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter$2;->this$0:Lcom/android/server/MiuiInputFilter;

    # getter for: Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MiuiInputFilter;->access$100(Lcom/android/server/MiuiInputFilter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter$2;->this$0:Lcom/android/server/MiuiInputFilter;

    # invokes: Lcom/android/server/MiuiInputFilter;->gotoScreenshotSetting()V
    invoke-static {v0}, Lcom/android/server/MiuiInputFilter;->access$200(Lcom/android/server/MiuiInputFilter;)V

    .line 398
    return-void
.end method
