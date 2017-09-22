.class public Lcom/android/vendorsettings/iz;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# instance fields
.field private final BW:Landroid/os/UserHandle;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/vendorsettings/iz;->BW:Landroid/os/UserHandle;

    .line 53
    iget-object v0, p0, Lcom/android/vendorsettings/iz;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const v0, 0x7f0c0ac3

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/iz;->mName:Ljava/lang/String;

    .line 57
    const v0, 0x1080338

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    :goto_0
    invoke-static {p3, v0}, Lcom/android/vendorsettings/iz;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/iz;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void

    .line 60
    :cond_0
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vendorsettings/iz;->mName:Ljava/lang/String;

    .line 61
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 62
    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/vendorsettings/c/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/vendorsettings/c/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/iz;)Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/iz;->BW:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/iz;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/iz;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
