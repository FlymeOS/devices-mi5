.class Lcom/android/vendorsettings/dndmode/y;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/dndmode/C;


# instance fields
.field final synthetic abe:Lcom/android/vendorsettings/dndmode/v;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dndmode/v;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/y;->abe:Lcom/android/vendorsettings/dndmode/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public r(J)V
    .locals 5

    .prologue
    .line 243
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/vendorsettings/dndmode/y;->abe:Lcom/android/vendorsettings/dndmode/v;

    invoke-static {v2}, Lcom/android/vendorsettings/dndmode/v;->a(Lcom/android/vendorsettings/dndmode/v;)Lmiui/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0b9f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0ba0

    new-instance v3, Lcom/android/vendorsettings/dndmode/z;

    invoke-direct {v3, p0, v0}, Lcom/android/vendorsettings/dndmode/z;-><init>(Lcom/android/vendorsettings/dndmode/y;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 282
    return-void
.end method
