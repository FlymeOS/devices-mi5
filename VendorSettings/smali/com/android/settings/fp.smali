.class Lcom/android/settings/fp;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"


# instance fields
.field private sX:Landroid/widget/TextView;

.field private sY:Landroid/widget/TextView;

.field private sZ:Landroid/widget/Switch;

.field private ta:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ff;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/settings/fp;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fp;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fp;->ta:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fp;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fp;->sZ:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fp;->sX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/fp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fp;->sX:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/fp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fp;->sY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/fp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fp;->sY:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/android/settings/fp;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fp;->sZ:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/fp;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fp;->ta:Landroid/widget/CheckBox;

    return-object v0
.end method
