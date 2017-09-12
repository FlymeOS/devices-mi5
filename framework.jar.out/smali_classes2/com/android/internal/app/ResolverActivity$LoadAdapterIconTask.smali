.class Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;
.super Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAdapterIconTask"
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/BaseAdapter;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 0
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1747
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1748
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->adapter:Landroid/widget/BaseAdapter;

    .line 1749
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1743
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/BaseAdapter;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1744
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1753
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    .line 1754
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-ne v0, v1, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1758
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1739
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
