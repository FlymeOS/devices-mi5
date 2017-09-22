.class public Lcom/android/vendorsettings/ProvisionSpinner;
.super Landroid/widget/Spinner;
.source "ProvisionSpinner.java"


# static fields
.field private static final wf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b2

    aput v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/ProvisionSpinner;->wf:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/ProvisionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vendorsettings/ProvisionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    sget-object v0, Lcom/android/vendorsettings/ProvisionSpinner;->wf:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040111

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 31
    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/ProvisionSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method
