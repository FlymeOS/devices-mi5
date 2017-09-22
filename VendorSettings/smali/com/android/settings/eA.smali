.class Lcom/android/vendorsettings/eA;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rw:Lcom/android/vendorsettings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiMasterClear;->a(Lcom/android/vendorsettings/MiuiMasterClear;Z)V

    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiMasterClear;->b(Lcom/android/vendorsettings/MiuiMasterClear;Z)V

    .line 346
    iget-object v0, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->a(Lcom/android/vendorsettings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->a(Lcom/android/vendorsettings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->b(Lcom/android/vendorsettings/MiuiMasterClear;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/eA;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->c(Lcom/android/vendorsettings/MiuiMasterClear;)V

    goto :goto_0
.end method
