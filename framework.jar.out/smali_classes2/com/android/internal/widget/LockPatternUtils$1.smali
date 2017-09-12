.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/os/AsyncTask;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .param p1, "dummy"    # [Ljava/lang/Void;

    .prologue
    .line 694
    const/4 v1, -0x1

    .line 695
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 697
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget v3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    return-object v3

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing encryption password"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 691
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.EncryptionPassword"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vold_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 691
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
