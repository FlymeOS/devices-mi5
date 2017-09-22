.class public Lcom/android/settings/hk;
.super Landroid/preference/EditTextPreference;
.source "SelectableEditTextPreference.java"


# instance fields
.field private yW:I


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/hk;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 55
    :goto_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget v3, p0, Lcom/android/settings/hk;->yW:I

    packed-switch v3, :pswitch_data_0

    .line 68
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0

    .line 58
    :pswitch_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 61
    :pswitch_1
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 64
    :pswitch_2
    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
