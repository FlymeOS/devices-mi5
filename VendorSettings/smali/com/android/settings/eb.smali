.class Lcom/android/settings/eb;
.super Ljava/lang/Object;
.source "MiuiAppPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic qc:Lcom/android/settings/MiuiAppPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAppPicker;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/eb;->qc:Lcom/android/settings/MiuiAppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/eb;->qc:Lcom/android/settings/MiuiAppPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiAppPicker;->a(Lcom/android/settings/MiuiAppPicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 65
    iget-object v0, p0, Lcom/android/settings/eb;->qc:Lcom/android/settings/MiuiAppPicker;

    invoke-virtual {v0}, Lcom/android/settings/MiuiAppPicker;->finish()V

    .line 66
    return-void
.end method
