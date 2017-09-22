.class Lcom/android/settings/applications/AppStorageSettings$2;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Hh:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$2;->Hh:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$2;->Hh:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->b(Lcom/android/settings/applications/AppStorageSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$2;->Hh:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/applications/AppStorageSettings;->c(ZZ)V

    .line 443
    return-void
.end method
