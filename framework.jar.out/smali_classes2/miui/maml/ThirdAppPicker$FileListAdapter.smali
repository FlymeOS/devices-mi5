.class Lmiui/maml/ThirdAppPicker$FileListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThirdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ThirdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lmiui/maml/ThirdAppPicker;


# direct methods
.method public constructor <init>(Lmiui/maml/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    .line 69
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 77
    move-object v3, p2

    .line 81
    :goto_0
    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    # getter for: Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;
    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->access$000(Lmiui/maml/ThirdAppPicker;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 83
    .local v1, "item":Landroid/content/pm/ResolveInfo;
    const v4, 0x110b000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x110b0010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, "name":Landroid/widget/TextView;
    if-nez v1, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    if-eqz v1, :cond_2

    .line 87
    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    # getter for: Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->access$100(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_2
    return-object v3

    .line 79
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "item":Landroid/content/pm/ResolveInfo;
    .end local v2    # "name":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v5, 0x11030000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 85
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "item":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "name":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    # getter for: Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->access$100(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 89
    :cond_2
    const v4, 0x110700b7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
