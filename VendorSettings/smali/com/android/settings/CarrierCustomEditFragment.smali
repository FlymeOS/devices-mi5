.class public Lcom/android/settings/CarrierCustomEditFragment;
.super Lcom/android/settings/BaseFragment;
.source "CarrierCustomEditFragment.java"


# instance fields
.field private cT:[Landroid/widget/EditText;

.field cU:[Ljava/lang/String;

.field private cV:I

.field private cW:[Landroid/database/ContentObserver;

.field private cX:[Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 65
    const v0, 0x7f1302bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget v1, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    if-ne v1, v3, :cond_1

    .line 67
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CarrierCustomEditFragment;->cT:[Landroid/widget/EditText;

    const v0, 0x7f1302bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, p1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status_bar_custom_carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/CarrierCustomEditFragment;->cT:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/CarrierCustomEditFragment;->cT:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cX:[Landroid/text/TextWatcher;

    new-instance v1, Lcom/android/settings/ao;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ao;-><init>(Lcom/android/settings/CarrierCustomEditFragment;I)V

    aput-object v1, v0, p1

    .line 97
    iget-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cT:[Landroid/widget/EditText;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/settings/CarrierCustomEditFragment;->cX:[Landroid/text/TextWatcher;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cW:[Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings/ap;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/ap;-><init>(Lcom/android/settings/CarrierCustomEditFragment;Landroid/os/Handler;I)V

    aput-object v1, v0, p1

    .line 109
    iget-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cW:[Landroid/database/ContentObserver;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 110
    return-void

    .line 70
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c00b1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/settings/CarrierCustomEditFragment;)[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cT:[Landroid/widget/EditText;

    return-object v0
.end method

.method private ak()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/CarrierCustomEditFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings/CarrierCustomEditFragment;->ak()V

    .line 132
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->finish()V

    .line 133
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/CarrierCustomEditFragment;->ak()V

    .line 123
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    if-ge v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CarrierCustomEditFragment;->cW:[Landroid/database/ContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroyView()V

    .line 127
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    const v0, 0x7f040155

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 38
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 39
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 42
    :cond_0
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    .line 49
    iget v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cT:[Landroid/widget/EditText;

    .line 50
    iget v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cU:[Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    new-array v0, v0, [Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cW:[Landroid/database/ContentObserver;

    .line 52
    iget v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    new-array v0, v0, [Landroid/text/TextWatcher;

    iput-object v0, p0, Lcom/android/settings/CarrierCustomEditFragment;->cX:[Landroid/text/TextWatcher;

    .line 53
    const v0, 0x7f1302bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/settings/CarrierCustomEditFragment;->a(ILandroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 56
    const v0, 0x7f13000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    const/4 v1, 0x1

    :goto_0
    iget v3, p0, Lcom/android/settings/CarrierCustomEditFragment;->cV:I

    if-ge v1, v3, :cond_0

    .line 58
    const v3, 0x7f040156

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0, v1, v3}, Lcom/android/settings/CarrierCustomEditFragment;->a(ILandroid/view/View;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
