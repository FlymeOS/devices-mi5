.class public Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# static fields
.field public static final alr:[I


# instance fields
.field private final akE:Ljava/text/SimpleDateFormat;

.field private final als:Landroid/util/SparseBooleanArray;

.field private final alt:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alr:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->akE:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    .line 52
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alt:Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alt:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    .line 57
    if-eqz p2, :cond_0

    move v0, v1

    .line 58
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    aget v3, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v2, v1

    .line 65
    :goto_1
    sget-object v0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alr:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 66
    sget-object v0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alr:[I

    aget v5, v0, v2

    .line 67
    const v0, 0x7f0401b5

    invoke-virtual {v4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 69
    const/4 v6, 0x7

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object v6, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->akE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    new-instance v6, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;

    invoke-direct {v6, p0, v5}, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v5, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->alt:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;)[I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->sP()[I

    move-result-object v0

    return-object v0
.end method

.method private sP()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v2, Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move v0, v1

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 87
    iget-object v4, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->als:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 91
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 92
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 95
    return-object v0
.end method


# virtual methods
.method protected c([I)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
