.class public Lcom/android/vendorsettings/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# static fields
.field public static final aul:Ljava/util/Comparator;


# instance fields
.field private aum:Landroid/view/View$OnClickListener;

.field private aun:I

.field private mUserId:I

.field private nV:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/vendorsettings/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/vendorsettings/users/UserPreference$1;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/users/UserPreference;->aul:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/users/UserPreference;->aun:I

    .line 53
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    .line 65
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 66
    :cond_0
    const v0, 0x7f0400f1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 68
    :cond_1
    iput-object p5, p0, Lcom/android/vendorsettings/users/UserPreference;->nV:Landroid/view/View$OnClickListener;

    .line 69
    iput-object p4, p0, Lcom/android/vendorsettings/users/UserPreference;->aum:Landroid/view/View$OnClickListener;

    .line 70
    iput p3, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserPreference;)I
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserPreference;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    .line 118
    :goto_0
    return v0

    .line 107
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->aun:I

    if-gez v0, :cond_3

    .line 109
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 110
    const v0, 0x7fffffff

    goto :goto_0

    .line 111
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 112
    const v0, 0x7ffffffe

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/users/UserPreference;->aun:I

    .line 116
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->aun:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->aun:I

    goto :goto_0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/vendorsettings/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 75
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 76
    const v1, 0x7f1301d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    const v2, 0x7f1301d2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    const v3, 0x7f1301d5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    iget-object v4, p0, Lcom/android/vendorsettings/users/UserPreference;->nV:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_2

    const-string v4, "no_remove_user"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserPreference;->nV:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    const v0, 0x7f1301d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserPreference;->aum:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserPreference;->aum:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserPreference;->nV:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 103
    return-void

    .line 85
    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
