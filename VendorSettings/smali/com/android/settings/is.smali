.class Lcom/android/settings/is;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private sX:Landroid/widget/TextView;

.field private sY:Landroid/widget/TextView;

.field private sZ:Landroid/widget/Switch;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/id;)V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/settings/is;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/is;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/settings/is;->sZ:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/is;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/is;->sX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/is;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/settings/is;->sX:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/is;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/is;->sY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/is;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/settings/is;->sY:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/android/settings/is;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/is;->sZ:Landroid/widget/Switch;

    return-object v0
.end method
