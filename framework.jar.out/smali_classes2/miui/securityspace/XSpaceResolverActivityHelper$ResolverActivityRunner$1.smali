.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;


# direct methods
.method constructor <init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$000(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 68
    return-void
.end method
