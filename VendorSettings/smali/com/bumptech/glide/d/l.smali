.class public Lcom/bumptech/glide/d/l;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# instance fields
.field private final aUT:Lcom/bumptech/glide/d/a;

.field private final aUU:Lcom/bumptech/glide/d/p;

.field private aUV:Lcom/bumptech/glide/j;

.field private final aUW:Ljava/util/HashSet;

.field private aUX:Lcom/bumptech/glide/d/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/l;-><init>(Lcom/bumptech/glide/d/a;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/d/a;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/d/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/d/n;-><init>(Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/m;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->aUU:Lcom/bumptech/glide/d/p;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->aUW:Ljava/util/HashSet;

    .line 40
    iput-object p1, p0, Lcom/bumptech/glide/d/l;->aUT:Lcom/bumptech/glide/d/a;

    .line 41
    return-void
.end method

.method private a(Lcom/bumptech/glide/d/l;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUW:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private b(Lcom/bumptech/glide/d/l;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUW:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method DY()Lcom/bumptech/glide/d/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUT:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public DZ()Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUV:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public Ea()Lcom/bumptech/glide/d/p;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUU:Lcom/bumptech/glide/d/p;

    return-object v0
.end method

.method public g(Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/d/l;->aUV:Lcom/bumptech/glide/j;

    .line 50
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    invoke-static {}, Lcom/bumptech/glide/d/o;->Eb()Lcom/bumptech/glide/d/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/d/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/o;->a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->aUX:Lcom/bumptech/glide/d/l;

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUX:Lcom/bumptech/glide/d/l;

    if-eq v0, p0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUX:Lcom/bumptech/glide/d/l;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/l;->a(Lcom/bumptech/glide/d/l;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUT:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->onDestroy()V

    .line 149
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUX:Lcom/bumptech/glide/d/l;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUX:Lcom/bumptech/glide/d/l;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/l;->b(Lcom/bumptech/glide/d/l;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->aUX:Lcom/bumptech/glide/d/l;

    .line 131
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUV:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUV:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->onLowMemory()V

    .line 167
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUT:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->onStart()V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUT:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->onStop()V

    .line 143
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUV:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->aUV:Lcom/bumptech/glide/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->onTrimMemory(I)V

    .line 158
    :cond_0
    return-void
.end method
