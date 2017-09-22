.class Lcom/android/vendorsettings/fZ;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic vG:Lcom/android/vendorsettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/vendorsettings/fZ;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/fZ;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/OwnerInfoSettings;->a(Lcom/android/vendorsettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/fZ;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/OwnerInfoSettings;->a(Lcom/android/vendorsettings/OwnerInfoSettings;Z)Z

    .line 98
    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/fZ;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    iget-object v1, p0, Lcom/android/vendorsettings/fZ;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/OwnerInfoSettings;->a(Lcom/android/vendorsettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 102
    :cond_0
    return-void
.end method
