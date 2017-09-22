.class Lcom/android/vendorsettings/V;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field final synthetic bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

.field private bL:Landroid/content/pm/ApplicationInfo;

.field private bM:Ljava/lang/String;

.field private bN:I

.field private mLabel:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Landroid/content/pm/ApplicationInfo;I)V
    .locals 3

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/vendorsettings/V;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/V;->mType:I

    .line 252
    iput-object p2, p0, Lcom/android/vendorsettings/V;->bL:Landroid/content/pm/ApplicationInfo;

    .line 253
    invoke-static {p1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->f(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u00A0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/V;->mLabel:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/V;->mType:I

    .line 255
    invoke-virtual {p0, p3}, Lcom/android/vendorsettings/V;->setFlag(I)V

    .line 256
    return-void
.end method

.method public constructor <init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/vendorsettings/V;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/V;->mType:I

    .line 259
    iput-object p2, p0, Lcom/android/vendorsettings/V;->mLabel:Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/V;->mType:I

    .line 261
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/V;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/V;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/V;)I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/android/vendorsettings/V;->mType:I

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/V;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/V;->bM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/V;)I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/android/vendorsettings/V;->bN:I

    return v0
.end method


# virtual methods
.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vendorsettings/V;->bL:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/V;->bL:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFlag(I)V
    .locals 2

    .prologue
    .line 268
    iput p1, p0, Lcom/android/vendorsettings/V;->bN:I

    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/V;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/V;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/V;->bM:Ljava/lang/String;

    .line 270
    return-void
.end method
