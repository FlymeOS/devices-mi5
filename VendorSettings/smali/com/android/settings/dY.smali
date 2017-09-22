.class Lcom/android/settings/dY;
.super Ljava/lang/Object;
.source "MiuiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic pY:Lcom/android/settings/MiuiApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiApnEditor;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/dY;->pY:Lcom/android/settings/MiuiApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/dY;->pY:Lcom/android/settings/MiuiApnEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiApnEditor;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/dY;->pY:Lcom/android/settings/MiuiApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/MiuiApnEditor;->finish()V

    .line 55
    :cond_0
    return-void
.end method
