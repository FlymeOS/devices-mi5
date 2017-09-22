.class Lmiui/external/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bsg:Lmiui/external/c;


# direct methods
.method constructor <init>(Lmiui/external/c;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 75
    iget-object v0, p0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-static {v0}, Lmiui/external/c;->a(Lmiui/external/c;)Landroid/app/Dialog;

    move-result-object v0

    .line 76
    new-instance v1, Lmiui/external/h;

    iget-object v2, p0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-direct {v1, v2, v0}, Lmiui/external/h;-><init>(Lmiui/external/c;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/external/e;->bsg:Lmiui/external/c;

    invoke-virtual {v2}, Lmiui/external/c;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SdkUpdatePromptDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/external/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lmiui/external/f;

    invoke-direct {v1, p0, v0}, Lmiui/external/f;-><init>(Lmiui/external/e;Landroid/app/Dialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/external/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method
