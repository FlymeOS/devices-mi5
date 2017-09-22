.class Lmiui/external/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic bsh:Landroid/app/Dialog;

.field final synthetic bsi:Lmiui/external/e;


# direct methods
.method constructor <init>(Lmiui/external/e;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lmiui/external/f;->bsi:Lmiui/external/e;

    iput-object p2, p0, Lmiui/external/f;->bsh:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/external/f;->bsh:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/f;->bsi:Lmiui/external/e;

    iget-object v0, v0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-static {v0}, Lmiui/external/c;->c(Lmiui/external/c;)Landroid/app/Dialog;

    move-result-object v0

    .line 94
    :goto_0
    new-instance v1, Lmiui/external/h;

    iget-object v2, p0, Lmiui/external/f;->bsi:Lmiui/external/e;

    iget-object v2, v2, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-direct {v1, v2, v0}, Lmiui/external/h;-><init>(Lmiui/external/c;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/external/f;->bsi:Lmiui/external/e;

    iget-object v0, v0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-virtual {v0}, Lmiui/external/c;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lmiui/external/f;->bsi:Lmiui/external/e;

    iget-object v0, v0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-static {v0}, Lmiui/external/c;->d(Lmiui/external/c;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/f;->j([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs j([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 83
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v0, p0, Lmiui/external/f;->bsi:Lmiui/external/e;

    iget-object v0, v0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-static {v0}, Lmiui/external/c;->b(Lmiui/external/c;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
