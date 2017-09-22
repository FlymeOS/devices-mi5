.class Lcom/android/vendorsettings/applications/IconLoader$IconItem;
.super Ljava/lang/Object;
.source "IconLoader.java"


# instance fields
.field It:Landroid/widget/ImageView;

.field Iu:Lcom/android/b/a/o;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/b/a/o;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/vendorsettings/applications/IconLoader$IconItem;->It:Landroid/widget/ImageView;

    .line 20
    iput-object p2, p0, Lcom/android/vendorsettings/applications/IconLoader$IconItem;->Iu:Lcom/android/b/a/o;

    .line 21
    return-void
.end method


# virtual methods
.method public kw()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vendorsettings/applications/IconLoader$IconItem;->It:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/android/vendorsettings/applications/IconLoader$IconItem;->Iu:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/vendorsettings/applications/IconLoader$IconItem;->It:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/IconLoader$IconItem;->Iu:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_0
    return-void
.end method
