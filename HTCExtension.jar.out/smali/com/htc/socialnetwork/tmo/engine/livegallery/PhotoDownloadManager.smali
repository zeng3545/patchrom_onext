.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PhotoDownloadManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MAX_THREADS:I = 0x2

.field static final MIN_THREADS:I = 0x2

.field static mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

.field static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    .line 22
    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 23
    return-void
.end method

.method public static GetInstance()Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    return-object v0
.end method


# virtual methods
.method public Cancel(Ljava/lang/String;)Z
    .locals 6
    .parameter "uri"

    .prologue
    .line 38
    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v5

    .line 39
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 42
    .local v3, r:Ljava/lang/Runnable;
    instance-of v4, v3, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    if-eqz v4, :cond_0

    .line 43
    move-object v0, v3

    check-cast v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    move-object v2, v0

    .line 44
    .local v2, mDownload:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;
    invoke-virtual {v2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->GetUri()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->Cancel()V

    .line 46
    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v5

    .line 51
    .end local v2           #mDownload:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;
    .end local v3           #r:Ljava/lang/Runnable;
    :goto_0
    return v4

    .line 50
    :cond_1
    monitor-exit v5

    .line 51
    const/4 v4, 0x0

    goto :goto_0

    .line 50
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public CancelAll()V
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
