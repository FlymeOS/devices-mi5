.class public Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;
.super Lcom/android/vendorsettings/BaseEditFragment;
.source "MiuiDeviceNameEditFragment.java"


# instance fields
.field private qv:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseEditFragment;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public X()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->qv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$System;->setDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-super {p0}, Lcom/android/vendorsettings/BaseEditFragment;->X()V

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0ed4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 22
    const v0, 0x7f040067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0ed1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChanged()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->qv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 29
    const v0, 0x7f1300d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->qv:Landroid/widget/EditText;

    .line 30
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->qv:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/vendorsettings/em;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Lcom/android/vendorsettings/em;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->qv:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiDeviceNameEditFragment;->qv:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 38
    :cond_0
    return-void
.end method
