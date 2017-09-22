.class Lcom/android/vendorsettings/aY;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic fZ:Lcom/android/vendorsettings/CredentialStorage;

.field private ga:Z


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/CredentialStorage;)V
    .locals 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/vendorsettings/aY;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/CredentialStorage;Lcom/android/vendorsettings/aW;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/aY;-><init>(Lcom/android/vendorsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 352
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/aY;->ga:Z

    .line 353
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-boolean v0, p0, Lcom/android/vendorsettings/aY;->ga:Z

    if-eqz v0, :cond_0

    .line 357
    iput-boolean v3, p0, Lcom/android/vendorsettings/aY;->ga:Z

    .line 358
    new-instance v0, Lcom/android/vendorsettings/aZ;

    iget-object v1, p0, Lcom/android/vendorsettings/aY;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/aZ;-><init>(Lcom/android/vendorsettings/CredentialStorage;Lcom/android/vendorsettings/aW;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/aZ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/aY;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/vendorsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method
