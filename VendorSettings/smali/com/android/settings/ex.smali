.class Lcom/android/settings/ex;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rm:Lcom/android/settings/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/ex;->rm:Lcom/android/settings/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ex;->rm:Lcom/android/settings/MiuiLocaleSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiLocaleSettings;->b(Lcom/android/settings/MiuiLocaleSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/ex;->rm:Lcom/android/settings/MiuiLocaleSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiLocaleSettings;->b(Lcom/android/settings/MiuiLocaleSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ex;->rm:Lcom/android/settings/MiuiLocaleSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiLocaleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
