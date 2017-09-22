.class Lcom/android/vendorsettings/dS;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic pN:Lcom/android/vendorsettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/dS;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/dS;->eI()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private eI()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c04e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c04e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 67
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Lcom/android/vendorsettings/dT;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/dT;-><init>(Lcom/android/vendorsettings/dS;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/dT;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/dS;->pN:Lcom/android/vendorsettings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/vendorsettings/MasterClearConfirm;->a(Lcom/android/vendorsettings/MasterClearConfirm;)V

    goto :goto_0
.end method
