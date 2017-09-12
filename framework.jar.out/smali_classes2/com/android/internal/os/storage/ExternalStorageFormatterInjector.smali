.class Lcom/android/internal/os/storage/ExternalStorageFormatterInjector;
.super Ljava/lang/Object;
.source "ExternalStorageFormatterInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createProgressDialog(Landroid/content/Context;)Lmiui/app/ProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    new-instance v0, Lmiui/app/ProgressDialog;

    sget v1, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .local v0, "mProgressDialog":Lmiui/app/ProgressDialog;
    return-object v0
.end method
