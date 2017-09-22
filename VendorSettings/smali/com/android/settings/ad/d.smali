.class Lcom/android/settings/ad/d;
.super Ljava/lang/Object;
.source "AdServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ER:Lcom/android/settings/ad/AdServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ad/AdServiceSettings;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/ad/d;->ER:Lcom/android/settings/ad/AdServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ad/d;->ER:Lcom/android/settings/ad/AdServiceSettings;

    invoke-static {v0}, Lcom/android/settings/ad/AdServiceSettings;->b(Lcom/android/settings/ad/AdServiceSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Ad;->resetAaid(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
